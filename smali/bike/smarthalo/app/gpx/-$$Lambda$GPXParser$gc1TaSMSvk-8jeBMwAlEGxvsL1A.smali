.class public final synthetic Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/gpx/GPXParser;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;->f$0:Lbike/smarthalo/app/gpx/GPXParser;

    iput-object p2, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;->f$0:Lbike/smarthalo/app/gpx/GPXParser;

    iget-object v1, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lbike/smarthalo/app/gpx/-$$Lambda$GPXParser$gc1TaSMSvk-8jeBMwAlEGxvsL1A;->f$2:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/gpx/GPXParser;->lambda$getGpxFromFile$0(Lbike/smarthalo/app/gpx/GPXParser;Landroid/content/Context;Landroid/net/Uri;)Lbike/smarthalo/app/models/GenericResponse;

    move-result-object v0

    return-object v0
.end method
