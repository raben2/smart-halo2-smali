.class public Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;
.super Ljava/lang/Object;
.source "GPXParserModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideGPXParser(Landroid/content/Context;)Lbike/smarthalo/app/gpx/GPXParser;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 25
    new-instance v0, Lbike/smarthalo/app/gpx/GPXParser;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/gpx/GPXParser;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
