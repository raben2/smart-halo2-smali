.class final Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$handleRideAverageSpeedNotification$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CarouselController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleRideAverageSpeedNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Double;",
        "Ljava/lang/Integer;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "speed",
        "",
        "invoke",
        "(Ljava/lang/Double;)I",
        "bike/smarthalo/app/controllers/metricsControllers/CarouselController$handleRideAverageSpeedNotification$1$getDisplaySpeed$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$handleRideAverageSpeedNotification$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Double;)I
    .locals 4
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/16 p1, 0x3e8

    int-to-double v2, p1

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 212
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$handleRideAverageSpeedNotification$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;

    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->getUserStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToFeet(I)I

    move-result p1

    :goto_1
    return p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$handleRideAverageSpeedNotification$$inlined$let$lambda$1;->invoke(Ljava/lang/Double;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
