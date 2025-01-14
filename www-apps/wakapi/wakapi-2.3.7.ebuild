# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_SUM=(
	"codeberg.org/Codeberg/avatars v0.0.0-20211228163022-8da63012fe69"
	"codeberg.org/Codeberg/avatars v0.0.0-20211228163022-8da63012fe69/go.mod"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/BurntSushi/toml v1.1.0"
	"github.com/BurntSushi/toml v1.1.0/go.mod"
	"github.com/KyleBanks/depth v1.2.1"
	"github.com/KyleBanks/depth v1.2.1/go.mod"
	"github.com/Masterminds/semver/v3 v3.1.1"
	"github.com/Masterminds/semver/v3 v3.1.1/go.mod"
	"github.com/PuerkitoBio/purell v1.1.1"
	"github.com/PuerkitoBio/purell v1.1.1/go.mod"
	"github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578"
	"github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578/go.mod"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751/go.mod"
	"github.com/cockroachdb/apd v1.1.0"
	"github.com/cockroachdb/apd v1.1.0/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20190719114852-fd7a80b32e1f/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0-20190314233015-f79a8a8ca69d/go.mod"
	"github.com/creack/pty v1.1.7/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/duke-git/lancet/v2 v2.0.4"
	"github.com/duke-git/lancet/v2 v2.0.4/go.mod"
	"github.com/emersion/go-sasl v0.0.0-20200509203442-7bfe0ed36a21/go.mod"
	"github.com/emersion/go-sasl v0.0.0-20211008083017-0b9dcfb154ac"
	"github.com/emersion/go-sasl v0.0.0-20211008083017-0b9dcfb154ac/go.mod"
	"github.com/emersion/go-smtp v0.15.0"
	"github.com/emersion/go-smtp v0.15.0/go.mod"
	"github.com/emvi/logbuch v1.2.0"
	"github.com/emvi/logbuch v1.2.0/go.mod"
	"github.com/felixge/httpsnoop v1.0.1/go.mod"
	"github.com/felixge/httpsnoop v1.0.2"
	"github.com/felixge/httpsnoop v1.0.2/go.mod"
	"github.com/getsentry/sentry-go v0.13.0"
	"github.com/getsentry/sentry-go v0.13.0/go.mod"
	"github.com/ghodss/yaml v1.0.0/go.mod"
	"github.com/go-co-op/gocron v1.13.0"
	"github.com/go-co-op/gocron v1.13.0/go.mod"
	"github.com/go-errors/errors v1.0.1"
	"github.com/go-kit/log v0.1.0/go.mod"
	"github.com/go-logfmt/logfmt v0.5.0/go.mod"
	"github.com/go-openapi/jsonpointer v0.19.3/go.mod"
	"github.com/go-openapi/jsonpointer v0.19.5"
	"github.com/go-openapi/jsonpointer v0.19.5/go.mod"
	"github.com/go-openapi/jsonreference v0.19.4/go.mod"
	"github.com/go-openapi/jsonreference v0.19.5"
	"github.com/go-openapi/jsonreference v0.19.5/go.mod"
	"github.com/go-openapi/jsonreference v0.20.0"
	"github.com/go-openapi/jsonreference v0.20.0/go.mod"
	"github.com/go-openapi/spec v0.19.14/go.mod"
	"github.com/go-openapi/spec v0.20.2"
	"github.com/go-openapi/spec v0.20.2/go.mod"
	"github.com/go-openapi/spec v0.20.6"
	"github.com/go-openapi/spec v0.20.6/go.mod"
	"github.com/go-openapi/swag v0.19.5/go.mod"
	"github.com/go-openapi/swag v0.19.11/go.mod"
	"github.com/go-openapi/swag v0.19.13"
	"github.com/go-openapi/swag v0.19.13/go.mod"
	"github.com/go-openapi/swag v0.19.15/go.mod"
	"github.com/go-openapi/swag v0.21.1"
	"github.com/go-openapi/swag v0.21.1/go.mod"
	"github.com/go-sql-driver/mysql v1.6.0"
	"github.com/go-sql-driver/mysql v1.6.0/go.mod"
	"github.com/go-stack/stack v1.8.0/go.mod"
	"github.com/gofrs/uuid v4.0.0+incompatible"
	"github.com/gofrs/uuid v4.0.0+incompatible/go.mod"
	"github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0"
	"github.com/golang/freetype v0.0.0-20170609003504-e2365dfdc4a0/go.mod"
	"github.com/google/go-cmp v0.5.5"
	"github.com/google/renameio v0.1.0/go.mod"
	"github.com/gorilla/handlers v1.5.1"
	"github.com/gorilla/handlers v1.5.1/go.mod"
	"github.com/gorilla/mux v1.8.0"
	"github.com/gorilla/mux v1.8.0/go.mod"
	"github.com/gorilla/schema v1.2.0"
	"github.com/gorilla/schema v1.2.0/go.mod"
	"github.com/gorilla/securecookie v1.1.1"
	"github.com/gorilla/securecookie v1.1.1/go.mod"
	"github.com/hashicorp/golang-lru v0.5.4"
	"github.com/hashicorp/golang-lru v0.5.4/go.mod"
	"github.com/jackc/chunkreader v1.0.0/go.mod"
	"github.com/jackc/chunkreader/v2 v2.0.0/go.mod"
	"github.com/jackc/chunkreader/v2 v2.0.1"
	"github.com/jackc/chunkreader/v2 v2.0.1/go.mod"
	"github.com/jackc/pgconn v0.0.0-20190420214824-7e0022ef6ba3/go.mod"
	"github.com/jackc/pgconn v0.0.0-20190824142844-760dd75542eb/go.mod"
	"github.com/jackc/pgconn v0.0.0-20190831204454-2fabfa3c18b7/go.mod"
	"github.com/jackc/pgconn v1.8.0/go.mod"
	"github.com/jackc/pgconn v1.9.0/go.mod"
	"github.com/jackc/pgconn v1.9.1-0.20210724152538-d89c8390a530/go.mod"
	"github.com/jackc/pgconn v1.11.0"
	"github.com/jackc/pgconn v1.11.0/go.mod"
	"github.com/jackc/pgio v1.0.0"
	"github.com/jackc/pgio v1.0.0/go.mod"
	"github.com/jackc/pgmock v0.0.0-20190831213851-13a1b77aafa2/go.mod"
	"github.com/jackc/pgmock v0.0.0-20201204152224-4fe30f7445fd/go.mod"
	"github.com/jackc/pgmock v0.0.0-20210724152146-4ad1a8207f65"
	"github.com/jackc/pgmock v0.0.0-20210724152146-4ad1a8207f65/go.mod"
	"github.com/jackc/pgpassfile v1.0.0"
	"github.com/jackc/pgpassfile v1.0.0/go.mod"
	"github.com/jackc/pgproto3 v1.1.0/go.mod"
	"github.com/jackc/pgproto3/v2 v2.0.0-alpha1.0.20190420180111-c116219b62db/go.mod"
	"github.com/jackc/pgproto3/v2 v2.0.0-alpha1.0.20190609003834-432c2951c711/go.mod"
	"github.com/jackc/pgproto3/v2 v2.0.0-rc3/go.mod"
	"github.com/jackc/pgproto3/v2 v2.0.0-rc3.0.20190831210041-4c03ce451f29/go.mod"
	"github.com/jackc/pgproto3/v2 v2.0.6/go.mod"
	"github.com/jackc/pgproto3/v2 v2.1.1/go.mod"
	"github.com/jackc/pgproto3/v2 v2.2.0"
	"github.com/jackc/pgproto3/v2 v2.2.0/go.mod"
	"github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b"
	"github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b/go.mod"
	"github.com/jackc/pgtype v0.0.0-20190421001408-4ed0de4755e0/go.mod"
	"github.com/jackc/pgtype v0.0.0-20190824184912-ab885b375b90/go.mod"
	"github.com/jackc/pgtype v0.0.0-20190828014616-a8802b16cc59/go.mod"
	"github.com/jackc/pgtype v1.8.1-0.20210724151600-32e20a603178/go.mod"
	"github.com/jackc/pgtype v1.10.0"
	"github.com/jackc/pgtype v1.10.0/go.mod"
	"github.com/jackc/pgx/v4 v4.0.0-20190420224344-cc3461e65d96/go.mod"
	"github.com/jackc/pgx/v4 v4.0.0-20190421002000-1b8f0016e912/go.mod"
	"github.com/jackc/pgx/v4 v4.0.0-pre1.0.20190824185557-6972a5742186/go.mod"
	"github.com/jackc/pgx/v4 v4.12.1-0.20210724153913-640aa07df17c/go.mod"
	"github.com/jackc/pgx/v4 v4.15.0"
	"github.com/jackc/pgx/v4 v4.15.0/go.mod"
	"github.com/jackc/puddle v0.0.0-20190413234325-e4ced69a3a2b/go.mod"
	"github.com/jackc/puddle v0.0.0-20190608224051-11cab39313c9/go.mod"
	"github.com/jackc/puddle v1.1.3/go.mod"
	"github.com/jackc/puddle v1.2.1/go.mod"
	"github.com/jinzhu/configor v1.2.1"
	"github.com/jinzhu/configor v1.2.1/go.mod"
	"github.com/jinzhu/inflection v1.0.0"
	"github.com/jinzhu/inflection v1.0.0/go.mod"
	"github.com/jinzhu/now v1.1.4/go.mod"
	"github.com/jinzhu/now v1.1.5"
	"github.com/jinzhu/now v1.1.5/go.mod"
	"github.com/josharian/intern v1.0.0"
	"github.com/josharian/intern v1.0.0/go.mod"
	"github.com/kevinpollet/nego v0.0.0-20200324111829-b3061ca9dd9d/go.mod"
	"github.com/kevinpollet/nego v0.0.0-20211010160919-a65cd48cee43"
	"github.com/kevinpollet/nego v0.0.0-20211010160919-a65cd48cee43/go.mod"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.2/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/pty v1.1.8/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/leandro-lugaresi/hub v1.1.1"
	"github.com/leandro-lugaresi/hub v1.1.1/go.mod"
	"github.com/lib/pq v1.0.0/go.mod"
	"github.com/lib/pq v1.1.0/go.mod"
	"github.com/lib/pq v1.2.0/go.mod"
	"github.com/lib/pq v1.10.2"
	"github.com/lib/pq v1.10.2/go.mod"
	"github.com/lpar/gzipped/v2 v2.0.2"
	"github.com/lpar/gzipped/v2 v2.0.2/go.mod"
	"github.com/mailru/easyjson v0.0.0-20190614124828-94de47d64c63/go.mod"
	"github.com/mailru/easyjson v0.0.0-20190626092158-b2ccc519800e/go.mod"
	"github.com/mailru/easyjson v0.7.6/go.mod"
	"github.com/mailru/easyjson v0.7.7"
	"github.com/mailru/easyjson v0.7.7/go.mod"
	"github.com/mattn/go-colorable v0.1.1/go.mod"
	"github.com/mattn/go-colorable v0.1.6/go.mod"
	"github.com/mattn/go-isatty v0.0.5/go.mod"
	"github.com/mattn/go-isatty v0.0.7/go.mod"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mattn/go-sqlite3 v1.14.9/go.mod"
	"github.com/mattn/go-sqlite3 v2.0.3+incompatible"
	"github.com/mattn/go-sqlite3 v2.0.3+incompatible/go.mod"
	"github.com/mitchellh/hashstructure/v2 v2.0.2"
	"github.com/mitchellh/hashstructure/v2 v2.0.2/go.mod"
	"github.com/narqo/go-badge v0.0.0-20220127184443-140af28a266e"
	"github.com/narqo/go-badge v0.0.0-20220127184443-140af28a266e/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/patrickmn/go-cache v2.1.0+incompatible"
	"github.com/patrickmn/go-cache v2.1.0+incompatible/go.mod"
	"github.com/pingcap/errors v0.11.4"
	"github.com/pkg/errors v0.8.1"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/robfig/cron/v3 v3.0.1"
	"github.com/robfig/cron/v3 v3.0.1/go.mod"
	"github.com/rogpeppe/go-internal v1.3.0/go.mod"
	"github.com/rs/xid v1.2.1/go.mod"
	"github.com/rs/zerolog v1.13.0/go.mod"
	"github.com/rs/zerolog v1.15.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/satori/go.uuid v1.2.0"
	"github.com/satori/go.uuid v1.2.0/go.mod"
	"github.com/shopspring/decimal v0.0.0-20180709203117-cd690d0c9e24/go.mod"
	"github.com/shopspring/decimal v1.2.0"
	"github.com/shopspring/decimal v1.2.0/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/sirupsen/logrus v1.4.1/go.mod"
	"github.com/sirupsen/logrus v1.4.2/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/objx v0.2.0"
	"github.com/stretchr/objx v0.2.0/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/stretchr/testify v1.5.1/go.mod"
	"github.com/stretchr/testify v1.6.1/go.mod"
	"github.com/stretchr/testify v1.7.0"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/swaggo/swag v1.7.0"
	"github.com/swaggo/swag v1.7.0/go.mod"
	"github.com/swaggo/swag v1.8.1"
	"github.com/swaggo/swag v1.8.1/go.mod"
	"github.com/urfave/cli/v2 v2.3.0/go.mod"
	"github.com/yuin/goldmark v1.2.1/go.mod"
	"github.com/zenazn/goji v0.9.0/go.mod"
	"go.uber.org/atomic v1.3.2/go.mod"
	"go.uber.org/atomic v1.4.0/go.mod"
	"go.uber.org/atomic v1.5.0/go.mod"
	"go.uber.org/atomic v1.6.0/go.mod"
	"go.uber.org/atomic v1.9.0"
	"go.uber.org/atomic v1.9.0/go.mod"
	"go.uber.org/multierr v1.1.0/go.mod"
	"go.uber.org/multierr v1.3.0/go.mod"
	"go.uber.org/multierr v1.5.0/go.mod"
	"go.uber.org/tools v0.0.0-20190618225709-2cfd321de3ee/go.mod"
	"go.uber.org/zap v1.9.1/go.mod"
	"go.uber.org/zap v1.10.0/go.mod"
	"go.uber.org/zap v1.13.0/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190411191339-88737f569e3a/go.mod"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
	"golang.org/x/crypto v0.0.0-20190820162420-60c769a6c586/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/crypto v0.0.0-20201203163018-be400aefbc4c/go.mod"
	"golang.org/x/crypto v0.0.0-20210616213533-5ff15b29337e/go.mod"
	"golang.org/x/crypto v0.0.0-20210711020723-a769d52b0f97/go.mod"
	"golang.org/x/crypto v0.0.0-20210921155107-089bfa567519/go.mod"
	"golang.org/x/crypto v0.0.0-20220411220226-7b82a4e95df4"
	"golang.org/x/crypto v0.0.0-20220411220226-7b82a4e95df4/go.mod"
	"golang.org/x/image v0.0.0-20220413100746-70e8d0d3baa9"
	"golang.org/x/image v0.0.0-20220413100746-70e8d0d3baa9/go.mod"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de/go.mod"
	"golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e/go.mod"
	"golang.org/x/mod v0.1.1-0.20191105210325-c90efee705ee/go.mod"
	"golang.org/x/mod v0.3.0/go.mod"
	"golang.org/x/mod v0.6.0-dev.0.20211013180041-c96bc1413d57"
	"golang.org/x/mod v0.6.0-dev.0.20211013180041-c96bc1413d57/go.mod"
	"golang.org/x/mod v0.6.0-dev.0.20220106191415-9b9b3d81d5e3/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20190813141303-74dc4d7220e7/go.mod"
	"golang.org/x/net v0.0.0-20190827160401-ba9fcec4b297/go.mod"
	"golang.org/x/net v0.0.0-20201021035429-f5854403a974/go.mod"
	"golang.org/x/net v0.0.0-20201110031124-69a78807bb2b/go.mod"
	"golang.org/x/net v0.0.0-20210119194325-5f4716e94777/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20211112202133-69e39bad7dc2"
	"golang.org/x/net v0.0.0-20211112202133-69e39bad7dc2/go.mod"
	"golang.org/x/net v0.0.0-20220425223048-2871e0cb64e4"
	"golang.org/x/net v0.0.0-20220425223048-2871e0cb64e4/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20201020160332-67f06af15bc9/go.mod"
	"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c"
	"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
	"golang.org/x/sys v0.0.0-20190403152447-81d4e9dc473e/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190422165155-953cdadca894/go.mod"
	"golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20220412211240-33da011f77ad"
	"golang.org/x/sys v0.0.0-20220412211240-33da011f77ad/go.mod"
	"golang.org/x/sys v0.0.0-20220503163025-988cb79eb6c6"
	"golang.org/x/sys v0.0.0-20220503163025-988cb79eb6c6/go.mod"
	"golang.org/x/term v0.0.0-20201117132131-f5c789dd3221/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.4/go.mod"
	"golang.org/x/text v0.3.5/go.mod"
	"golang.org/x/text v0.3.6/go.mod"
	"golang.org/x/text v0.3.7"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190425163242-31fd60d6bfdc/go.mod"
	"golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac/go.mod"
	"golang.org/x/tools v0.0.0-20190823170909-c4a336ef6a2f/go.mod"
	"golang.org/x/tools v0.0.0-20191029041327-9cc4af7d6b2c/go.mod"
	"golang.org/x/tools v0.0.0-20191029190741-b9c20aec41a5/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.0.0-20200103221440-774c71fcf114/go.mod"
	"golang.org/x/tools v0.0.0-20201120155355-20be4ac4bd6e/go.mod"
	"golang.org/x/tools v0.1.8-0.20211029000441-d6a9af8af023"
	"golang.org/x/tools v0.1.8-0.20211029000441-d6a9af8af023/go.mod"
	"golang.org/x/tools v0.1.10"
	"golang.org/x/tools v0.1.10/go.mod"
	"golang.org/x/xerrors v0.0.0-20190410155217-1f06c39b4373/go.mod"
	"golang.org/x/xerrors v0.0.0-20190513163551-3ee3066db522/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/inconshreveable/log15.v2 v2.0.0-20180818164646-67afb5ed74ec/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.3/go.mod"
	"gopkg.in/yaml.v2 v2.3.0/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200615113413-eeeca48fe776/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod"
	"gorm.io/driver/mysql v1.3.3"
	"gorm.io/driver/mysql v1.3.3/go.mod"
	"gorm.io/driver/postgres v1.3.4"
	"gorm.io/driver/postgres v1.3.4/go.mod"
	"gorm.io/driver/sqlite v1.3.1"
	"gorm.io/driver/sqlite v1.3.1/go.mod"
	"gorm.io/gorm v1.23.1/go.mod"
	"gorm.io/gorm v1.23.4"
	"gorm.io/gorm v1.23.4/go.mod"
	"honnef.co/go/tools v0.0.1-2019.2.3/go.mod"
)

go-module_set_globals

DESCRIPTION="A minimalist, self-hosted WakaTime-compatible backend for coding statistics"
HOMEPAGE="https://wakapi.dev/ https://github.com/muety/wakapi"
SRC_URI="https://github.com/muety/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

BDEPEND=">=dev-lang/go-1.18 app-arch/unzip"

src_compile() {
	go build -o "${PN}"
}

src_install() {
	dobin "${PN}"
	insinto /etc/${PN}
	newins config.default.yml config.yml
}
