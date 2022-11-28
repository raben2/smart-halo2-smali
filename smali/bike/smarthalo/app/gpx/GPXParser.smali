.class public Lbike/smarthalo/app/gpx/GPXParser;
.super Ljava/lang/Object;
.source "GPXParser.java"


# instance fields
.field private builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private context:Landroid/content/Context;

.field gpxReader:Lio/ticofab/androidgpxparser/parser/GPXParser;

.field private transformerFactory:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lio/ticofab/androidgpxparser/parser/GPXParser;

    invoke-direct {v0}, Lio/ticofab/androidgpxparser/parser/GPXParser;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/gpx/GPXParser;->gpxReader:Lio/ticofab/androidgpxparser/parser/GPXParser;

    .line 60
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/gpx/GPXParser;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    .line 61
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/gpx/GPXParser;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 63
    invoke-static {p1}, Lnet/danlew/android/joda/JodaTimeAndroid;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$getGpxFromFile$0(Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;Landroid/net/Uri;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 121
    :try_start_1
    iget-object v0, p0, Lbike/smarthalo/app/gpx/GPXParser;->gpxReader:Lio/ticofab/androidgpxparser/parser/GPXParser;

    invoke-virtual {v0, v1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->parse(Ljava/io/InputStream;)Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    move-result-object v0

    .line 122
    invoke-static {p2, p1}, Lbike/smarthalo/app/helpers/SHFileHelper;->loadFileAsString(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 123
    new-instance p2, Lbike/smarthalo/app/models/GenericResponse;

    new-instance v2, Lbike/smarthalo/app/models/GPXResponse;

    invoke-direct {v2, v0, p1}, Lbike/smarthalo/app/models/GPXResponse;-><init>(Lio/ticofab/androidgpxparser/parser/domain/Gpx;Ljava/lang/String;)V

    invoke-direct {p2, v2}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p2

    .line 125
    :cond_1
    :try_start_2
    new-instance p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-direct {p1, v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_3
    throw p1
.end method

.method static synthetic lambda$getGpxFromFile$1(Ljava/lang/Throwable;)Lbike/smarthalo/app/models/GenericResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    new-instance p0, Lbike/smarthalo/app/models/GenericResponse;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbike/smarthalo/app/models/GenericResponse;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public getGpxFromFile(Landroid/net/Uri;Landroid/content/Context;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/GenericResponse<",
            "Lbike/smarthalo/app/models/GPXResponse;",
            ">;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;

    invoke-direct {v0, p0, p2, p1}, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;-><init>(Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;Landroid/net/Uri;)V

    .line 115
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    .line 133
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$h7laSYwOjdzbzHxqw8qbiJBOfhg;->INSTANCE:Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$h7laSYwOjdzbzHxqw8qbiJBOfhg;

    .line 134
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 135
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public writeGPXFromRide(Lbike/smarthalo/app/models/SHRide;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lbike/smarthalo/app/gpx/GPXParser;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "UTC"

    .line 70
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 72
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v2, "gpx"

    .line 73
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 74
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v3, "trk"

    .line 76
    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 77
    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v2, "trkseg"

    .line 79
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 80
    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 82
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    const-string v4, "trkpt"

    .line 83
    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 84
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "lat"

    .line 86
    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    .line 87
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$latitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    const-string v7, "0"

    :goto_1
    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 88
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v6, "lon"

    .line 90
    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    .line 91
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$longitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    const-string v7, "0"

    :goto_2
    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    .line 92
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v5, "ele"

    .line 94
    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 95
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$altitude()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    const-string v6, "0"

    :goto_3
    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 96
    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v5, "time"

    .line 98
    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 99
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 100
    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 102
    invoke-interface {v2, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_0

    .line 105
    :cond_3
    new-instance p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {p1, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 106
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 107
    new-instance p2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p2, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 109
    iget-object v0, p0, Lbike/smarthalo/app/gpx/GPXParser;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p1, p2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    return-void
.end method
