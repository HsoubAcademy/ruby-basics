settings = {
    system: {
        sound: {
            speaker_volume: 15
        }
    }
}

puts settings[:system][:sound][:speaker_volume]
puts settings[:system][:sound][:microphone_volume]

puts settings.dig(:system, :screen, :brightness)
puts settings.dig(:system, :sound, :speaker_volume)
