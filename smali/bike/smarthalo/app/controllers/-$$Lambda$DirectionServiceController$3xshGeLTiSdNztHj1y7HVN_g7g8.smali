.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

.field private final synthetic f$1:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;->f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;->f$1:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;->f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;->f$1:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$3xshGeLTiSdNztHj1y7HVN_g7g8;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/controllers/DirectionServiceController;->lambda$toggleNavigationMode$3(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;)V

    return-void
.end method
