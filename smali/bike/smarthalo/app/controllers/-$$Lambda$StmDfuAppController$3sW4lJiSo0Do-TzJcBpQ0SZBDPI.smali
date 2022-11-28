.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$3sW4lJiSo0Do-TzJcBpQ0SZBDPI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

.field private final synthetic f$1:Lbike/smarthalo/sdk/SHDeviceServiceBinder;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/StmDfuAppController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$3sW4lJiSo0Do-TzJcBpQ0SZBDPI;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$3sW4lJiSo0Do-TzJcBpQ0SZBDPI;->f$1:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$3sW4lJiSo0Do-TzJcBpQ0SZBDPI;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$3sW4lJiSo0Do-TzJcBpQ0SZBDPI;->f$1:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/controllers/StmDfuAppController;->lambda$startStmDfu$2(Lbike/smarthalo/app/controllers/StmDfuAppController;Lbike/smarthalo/sdk/SHDeviceServiceBinder;Ljava/lang/Integer;)V

    return-void
.end method
