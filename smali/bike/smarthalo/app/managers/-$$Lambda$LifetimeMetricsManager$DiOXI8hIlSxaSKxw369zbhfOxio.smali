.class public final synthetic Lbike/smarthalo/app/managers/-$$Lambda$LifetimeMetricsManager$DiOXI8hIlSxaSKxw369zbhfOxio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/LifetimeMetricsManager;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/LifetimeMetricsManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/-$$Lambda$LifetimeMetricsManager$DiOXI8hIlSxaSKxw369zbhfOxio;->f$0:Lbike/smarthalo/app/managers/LifetimeMetricsManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/-$$Lambda$LifetimeMetricsManager$DiOXI8hIlSxaSKxw369zbhfOxio;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/-$$Lambda$LifetimeMetricsManager$DiOXI8hIlSxaSKxw369zbhfOxio;->f$0:Lbike/smarthalo/app/managers/LifetimeMetricsManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/-$$Lambda$LifetimeMetricsManager$DiOXI8hIlSxaSKxw369zbhfOxio;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lbike/smarthalo/app/managers/LifetimeMetricsManager;->lambda$getLifetimeMetrics$0(Lbike/smarthalo/app/managers/LifetimeMetricsManager;Ljava/util/List;)Lbike/smarthalo/app/models/LifetimeMetrics;

    move-result-object v0

    return-object v0
.end method
