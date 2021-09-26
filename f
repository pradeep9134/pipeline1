pipeline{
        agent any
         parameters{
             booleanparam(name: "RELEASE", defaultvalue: false)
    }
      stages {
    
          stage("build"){
            steps {
              sh "./fact.sh"
            }
        }
     stage("publish") {
      steps {
        script{
             if (params.RELEASE){
            sh "./fib.sh"
}
}

}
}
}
}

