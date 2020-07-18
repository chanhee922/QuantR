# 주가 다운로드 

## API를 이용한 데이터 다운로드
library(quantmod)
    #### API 다운로드
getSymbols('AAPL')
head(AAPL)
    #### Ad = Adjusted. 배당이 반영된 수정주가
chart_Series(Ad(AAPL))
    #### auto.assign 인자를 FALSE로 설정해주면 다운로드한 데이터가 원하는 변수에 저장
data = getSymbols('AAPL',
                  from = '2020-01-01', to = '2020-07-17',
                  auto.assign = FALSE)
head(data)
    #### 한번에 여러 종목의 주가 다운로드
ticker = c('FB', 'NVDA') 
getSymbols(ticker)

  ### 코스피 상장 종목의 경우 티커.KS, 
  ### 코스닥 상장 종목의 경우 티커.KQ의 형태로 입력
meritz = getSymbols('008560.KS',
           from = '2020-01-01', to = '2020-07-17',
           auto.assign = F)
head(meritz)  
chart_Series(Cl(meritz)) # Cl = 종가


