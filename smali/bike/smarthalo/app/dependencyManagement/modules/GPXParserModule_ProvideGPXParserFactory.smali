.class public final Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;
.super Ljava/lang/Object;
.source "GPXParserModule_ProvideGPXParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/gpx/GPXParser;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    .line 18
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvideGPXParser(Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;Landroid/content/Context;)Lbike/smarthalo/app/gpx/GPXParser;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;->provideGPXParser(Landroid/content/Context;)Lbike/smarthalo/app/gpx/GPXParser;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/gpx/GPXParser;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/gpx/GPXParser;
    .locals 2

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;->contextProvider:Ljavax/inject/Provider;

    .line 24
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;->provideGPXParser(Landroid/content/Context;)Lbike/smarthalo/app/gpx/GPXParser;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/gpx/GPXParser;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule_ProvideGPXParserFactory;->get()Lbike/smarthalo/app/gpx/GPXParser;

    move-result-object v0

    return-object v0
.end method
