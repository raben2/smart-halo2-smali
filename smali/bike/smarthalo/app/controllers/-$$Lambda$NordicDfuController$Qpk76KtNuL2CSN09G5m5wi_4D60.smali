.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$Qpk76KtNuL2CSN09G5m5wi_4D60;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/NordicDfuController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/NordicDfuController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$Qpk76KtNuL2CSN09G5m5wi_4D60;->f$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$NordicDfuController$Qpk76KtNuL2CSN09G5m5wi_4D60;->f$0:Lbike/smarthalo/app/controllers/NordicDfuController;

    check-cast p1, Lbike/smarthalo/app/models/BootloaderInfo;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/NordicDfuController;->lambda$observeBootloaderInfo$1(Lbike/smarthalo/app/controllers/NordicDfuController;Lbike/smarthalo/app/models/BootloaderInfo;)V

    return-void
.end method
