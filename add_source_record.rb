require_relative 'common'

source = 'RT988_demo'
url = 'https://github.com/vitmy0000/SENSE'
description = 'SENSEリポジトリに記載のRT988デモデータ10000本'

Source.create({
    source: source,
    url: url,
    description: description,
  })
