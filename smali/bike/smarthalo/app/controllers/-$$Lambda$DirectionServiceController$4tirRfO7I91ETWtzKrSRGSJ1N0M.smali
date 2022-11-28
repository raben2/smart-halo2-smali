.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$4tirRfO7I91ETWtzKrSRGSJ1N0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DirectionServiceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$4tirRfO7I91ETWtzKrSRGSJ1N0M;->f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$4tirRfO7I91ETWtzKrSRGSJ1N0M;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$4tirRfO7I91ETWtzKrSRGSJ1N0M;->f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$4tirRfO7I91ETWtzKrSRGSJ1N0M;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lbike/smarthalo/app/controllers/DirectionServiceController;->lambda$navigateToFavourite$7(Lbike/smarthalo/app/controllers/DirectionServiceController;Ljava/lang/String;)V

    return-void
.end method
