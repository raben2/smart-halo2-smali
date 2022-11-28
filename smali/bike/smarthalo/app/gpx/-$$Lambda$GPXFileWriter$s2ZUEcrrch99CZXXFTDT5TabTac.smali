.class public final synthetic Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/models/SHRide;

.field private final synthetic f$1:Lbike/smarthalo/app/gpx/GPXParser;

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;->f$0:Lbike/smarthalo/app/models/SHRide;

    iput-object p2, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;->f$1:Lbike/smarthalo/app/gpx/GPXParser;

    iput-object p3, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;->f$0:Lbike/smarthalo/app/models/SHRide;

    iget-object v1, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;->f$1:Lbike/smarthalo/app/gpx/GPXParser;

    iget-object v2, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXFileWriter$s2ZUEcrrch99CZXXFTDT5TabTac;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/gpx/GPXFileWriter;->lambda$observeGPXFileFromRide$0(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;)Lbike/smarthalo/app/gpx/RideParsingResponse;

    move-result-object v0

    return-object v0
.end method
