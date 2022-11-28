.class final Lbike/smarthalo/app/designRefresh/map/MapCoordinator$2;
.super Ljava/lang/Object;
.source "MapCoordinator.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/designRefresh/map/MapCoordinator;-><init>(Lbike/smarthalo/app/navigationFlow/LifeCycleContract;Llayout/mapAdapter/SHGoogleMapsMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "Landroid/os/Bundle;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/designRefresh/map/MapCoordinator;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/designRefresh/map/MapCoordinator;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator$2;->this$0:Lbike/smarthalo/app/designRefresh/map/MapCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/designRefresh/map/MapCoordinator$2;->this$0:Lbike/smarthalo/app/designRefresh/map/MapCoordinator;

    invoke-virtual {v0}, Lbike/smarthalo/app/designRefresh/map/MapCoordinator;->getGoogleMapsMap()Llayout/mapAdapter/SHGoogleMapsMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llayout/mapAdapter/SHGoogleMapsMap;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/designRefresh/map/MapCoordinator$2;->accept(Landroid/os/Bundle;)V

    return-void
.end method
