## Write your own NATO alphabet

## Create a hash table for your alphabet
## Create a function to encode a string
## Encode function will take a string, replace all upper and lower case characters with their "NATO" equivalents and return the result
## Create a function to decode a string
## Decode function will take a string, replace the "NATO" characters with their normal letter form and return that result
## Non-alphabetical should be copied/stay the same in both cases

## Example/Test Case:

## encode(my_alpha, "dog") => "delta omega gamma"
## decode(my_alpha, "delta omega gamma") => "dog"
## encode(my_alpha, "i am 24 years old") => "india alpha mike 24 yankee echo alpha romeo sierra oscar lima delta"

def encode(msg, alphabet)
    msg_to_alpha = ""
    msg.each_char do |c|
        msg_to_alpha+= alphabet[c.to_sym].to_s
        msg_to_alpha+= " "
    end
    puts msg_to_alpha
end

def decode(alphabet, msg)
    msg_to_alpha = ""
    msg.each_char do |c|
        msg_to_alpha+= alphabet[c.to_sym].to_s
        msg_to_alpha+= " "
    end
    print msg_to_alpha
end

sherri_alpha = { 
                a: :Alfa, 
                b: :Bin, 
                c: :Cola, 
                d: :Dizzy, 
                e: :Extra, 
                f: :Fin, 
                g: :Gone, 
                h: :Help, 
                i: :It, 
                j: :Jelly, 
                k: :Kooky, 
                l: :Loony, 
                m: :Money, 
                n: :Noodle, 
                o: :Opera, 
                p: :Pretty, 
                q: :Quiet, 
                r: :Root, 
                s: :Shoot, 
                t: :Tuna, 
                u: :Ugly, 
                v: :Vino, 
                w: :Wine, 
                x: :Xray, 
                y: :Yule, 
                z: :Zoo }
nato_alpha = { 
                a: :Apple, 
                b: :Bravo, 
                c: :Charlie, 
                d: :Delta, 
                e: :Echo, 
                f: :Foxtrot, 
                g: :Golf, 
                h: :Hotel, 
                i: :India, 
                j: :Juliett, 
                k: :Kilo, 
                l: :Lima, 
                m: :Mike, 
                n: :November, 
                o: :Oscar, 
                p: :Papa, 
                q: :Quebec, 
                r: :Romeo, 
                s: :Sierra, 
                t: :Tango, 
                u: :Uniform, 
                v: :Victor, 
                w: :Whiskey, 
                x: :Xray, 
                y: :Yankee, 
                z: :Zulu }

encode("dog", sherri_alpha)
decode(nato_alpha, "delta, omega, gamma")

