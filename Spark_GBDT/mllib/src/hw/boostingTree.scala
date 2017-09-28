package hw
 import org.apache.spark.ml.Pipeline
import org.apache.spark.ml.evaluation.RegressionEvaluator
import org.apache.spark.ml.feature.VectorIndexer
import org.apache.spark.ml.regression.{GBTRegressionModel, GBTRegressor}
import org.apache.spark.{SparkConf, SparkContext}
import org.apache.spark.sql.SQLContext
import org.apache.spark.ml.feature.{OneHotEncoder, StringIndexer, VectorAssembler, VectorIndexer}
/**
 * @author BIGDATA
 */
object boostingTree {
  case class Info(length:Int,width:Int,inN:Int,outN:Int,travel_time:Double,year:Int,month:Int,day:Int,seconds:Int)
  def main(args: Array[String]): Unit = {
   val conf = new SparkConf().setAppName("SMS Message Classification (HAM or SPAM)").setMaster("local[4]")
    val sc = new SparkContext(conf)
    val sqlCtx = new SQLContext(sc)
    import sqlCtx.implicits._
  
    val pd = sc.textFile("C://Users//BIGDATA//1_n_s.txt")
    var data=pd.map(_.split(";")).map(p =>Info(p(2).toInt, p(3).toInt,p(7).toInt,p(8).toInt,p(11).toDouble,p(13).toInt,p(14).toInt,p(15).toInt,p(19).toInt)).toDF()
   
    // Load and parse the data file, converting it to a DataFrame.
    
    // Automatically identify categorical features, and index them.
    // Set maxCategories so features with > 4 distinct values are treated as continuous.
    val index2 = new StringIndexer().setInputCol("travel_time").setOutputCol("label").setHandleInvalid("skip")
     
    val assembler = new VectorAssembler()
      .setInputCols(Array("length","width","inN","outN","travel_time","year","month","day","seconds"))
      .setOutputCol("features")
    
    // Split the data into training and test sets (30% held out for testing).
    val Array(trainingData, testData) = data.randomSplit(Array(0.7, 0.3))
    
    // Train a GBT model.
    val gbt = new GBTRegressor()
      .setLabelCol("label")
      .setFeaturesCol("features")
      .setMaxIter(10)
    
    // Chain indexer and GBT in a Pipeline.
    val pipeline = new Pipeline()
      .setStages(Array(index2,assembler, gbt))
    
    // Train model. This also runs the indexer.
    val model = pipeline.fit(trainingData)
    
    // Make predictions.
    val predictions = model.transform(testData)
    
    // Select example rows to display.
    predictions.select("prediction", "label", "features").show(100)
    
    // Select (prediction, true label) and compute test error.
    /*val evaluator = new RegressionEvaluator()
      .setLabelCol("label")
      .setPredictionCol("prediction")
      .setMetricName("rmse")
    val rmse = evaluator.evaluate(predictions)
    println("Root Mean Squared Error (RMSE) on test data = " + rmse)
    
    val gbtModel = model.stages(1).asInstanceOf[GBTRegressionModel]
    println("Learned regression GBT model:\n" + gbtModel.toDebugString)
    */
  }
}