.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$7xfy2bffVQmYSBgLMp51zbNHYIo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

.field private final synthetic f$1:Lbike/smarthalo/app/models/UserFavourite;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/models/UserFavourite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$7xfy2bffVQmYSBgLMp51zbNHYIo;->f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$7xfy2bffVQmYSBgLMp51zbNHYIo;->f$1:Lbike/smarthalo/app/models/UserFavourite;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$7xfy2bffVQmYSBgLMp51zbNHYIo;->f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$7xfy2bffVQmYSBgLMp51zbNHYIo;->f$1:Lbike/smarthalo/app/models/UserFavourite;

    invoke-static {v0, v1}, Lbike/smarthalo/app/controllers/DirectionServiceController;->lambda$navigateToFavourite$6(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/models/UserFavourite;)V

    return-void
.end method
