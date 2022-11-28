.class public Lbike/smarthalo/app/gpx/GPXFileWriter;
.super Ljava/lang/Object;
.source "GPXFileWriter.java"


# static fields
.field public static final GPX_EXTENSION:Ljava/lang/String; = ".gpx"

.field public static final TAG:Ljava/lang/String; = "GPXFileWriter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$observeGPXFileFromRide$0(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;)Lbike/smarthalo/app/gpx/RideParsingResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-static {p0, p1, p2}, Lbike/smarthalo/app/gpx/GPXFileWriter;->writeGPXToFile(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 49
    new-instance p1, Lbike/smarthalo/app/gpx/RideParsingResponse;

    invoke-direct {p1}, Lbike/smarthalo/app/gpx/RideParsingResponse;-><init>()V

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 50
    :goto_0
    iput-boolean p2, p1, Lbike/smarthalo/app/gpx/RideParsingResponse;->isSuccess:Z

    .line 51
    iput-object p0, p1, Lbike/smarthalo/app/gpx/RideParsingResponse;->file:Ljava/io/File;

    return-object p1
.end method

.method public static observeGPXFileFromRide(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;)Lio/reactivex/Single;
    .locals 1
    .param p0    # Lbike/smarthalo/app/models/SHRide;
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
            "Lbike/smarthalo/app/models/SHRide;",
            "Lbike/smarthalo/app/gpx/GPXParser;",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/gpx/RideParsingResponse;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;-><init>(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;)V

    .line 47
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p0

    .line 54
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    .line 55
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method public static writeGPXToFile(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "strava-"

    const-string v1, ".gpx"

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-static {v0, v1, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 36
    invoke-virtual {p1, p0, p2}, Lbike/smarthalo/app/gpx/GPXParser;->writeGPXFromRide(Lbike/smarthalo/app/models/SHRide;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 39
    sget-object p1, Lbike/smarthalo/app/gpx/GPXFileWriter;->TAG:Ljava/lang/String;

    const-string p2, "IOException occurred, cannot parse GPX"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
