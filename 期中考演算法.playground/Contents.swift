func sortArray(array1:[Int], array2:[Int]) -> [Int] {
    var sumArray = [Int]()
    var cancelRepeatArray = [Int]()
    var resultArray:[Int] = []
    var arrayMenberCount:[Int:Int] = [:]
    var topMenberIndex = 0
    var toperMenber = 0
    var repeatTimes = 0
    //將array1和array2的值混入sumArray裡頭
    for arrayMenber in array1{
        sumArray.append(arrayMenber)
    }
    for arrayMenber in array2{
        sumArray.append(arrayMenber)
    }
    //用計分板幫sumArray計算各個Menber的數量,當arrayMenber是首次出現時，將其加入resultArray,結果將產生無重複的陣列
    for arrayMenber in sumArray{
        if arrayMenberCount[arrayMenber] == nil{
            arrayMenberCount[arrayMenber] = 1
            cancelRepeatArray.append(arrayMenber)
        }else{
            arrayMenberCount[arrayMenber] = arrayMenberCount[arrayMenber]! + 1
        }
    }
    //先把目前不重複的陣列數量減1後存入repeatTimes
    repeatTimes = cancelRepeatArray.count - 1
//cancelRepeatArray的成員有多少位以下就重複運作多少次
    for _ in 0...repeatTimes{
        //每次都要把toperMenber歸零
        toperMenber = 0
        //找出cancelRepeatArray當中最大值的成員
        for index in 0...(cancelRepeatArray.count - 1){
            if cancelRepeatArray[index] > toperMenber{
                toperMenber = cancelRepeatArray[index]
                topMenberIndex = index
            }
        }
        //把最大值的成員從cancelRepeatArray刪除，再把該成員加入resultArray的最前面
        resultArray.insert(toperMenber, at: 0)
        cancelRepeatArray.remove(at: topMenberIndex)
        
//cancelRepeatArray的成員有多少位以上就重複運作多少次
    }
    return resultArray
}
//測試
sortArray(array1: [10,9,8,7,6,5,4,3,2,1], array2: [1,2,3,5,100])

