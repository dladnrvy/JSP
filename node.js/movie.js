//생성자 함수 정의 : 클래스 정의
function Movie(title, director){

    //변수정의
    this.title = title;
    this.director = director;
    
    //메서드 정의
    this.showData = function(){
        console.log(this.title + ' : ' + this.director)
    };
    this.makeObj = function(){
        return{
            title : this.title,
            director : this.director
        };
    };
}

//모듈 객체 등록
module.exports.Movie = Movie;
module.exports = Movie;