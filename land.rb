class LandMark
    def createOutputLandmark landmarkInput,error
        
        if(landmarkInput.size>0)
            outputIndicator=Array(1..30)
            landmark_Pointer=0
    
            for i in (0..outputIndicator.size-1)
                if outputIndicator[i]>=landmarkInput[landmark_Pointer]-error && outputIndicator[i]<=landmarkInput[landmark_Pointer]+error
                    if outputIndicator[i]==landmarkInput[landmark_Pointer]+error
                        landmark_Pointer+=1
                    end
                    outputIndicator[i]=1
                    if(landmark_Pointer==landmarkInput.length)
                        for j in (i+1..outputIndicator.size-1)
                            outputIndicator[j]=0
                        end
                        break
                    end
                    
                else
                    outputIndicator[i]=0
                end
    
            end
        else
            outputIndicator=Array.new(30,0)
        end
        p outputIndicator
    end


puts "Enter error"
error=gets
l=LandMark.new

# Assuming no negative inputs could be included (The landmark starts from 0) and the input is in sorted order.
#The worst case complexity of the entire algorithm is O(n) where n is the number of output points

l.createOutputLandmark(landmarkInput = Array[5,12,18,25,30],error.to_i)
l.createOutputLandmark(landmarkInput = Array[],error.to_i) #empty input
l.createOutputLandmark(landmarkInput = Array[5],error.to_i)  
l.createOutputLandmark(landmarkInput = Array[5,7,34,40],error.to_i) #some of the inputs are out of range
l.createOutputLandmark(landmarkInput = Array[34,40],error.to_i) #out of range input(>30)
l.createOutputLandmark(landmarkInput = Array[0],error.to_i) #assuming the landmarks could start from 0




end