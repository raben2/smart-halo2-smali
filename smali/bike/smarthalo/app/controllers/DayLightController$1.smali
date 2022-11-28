.class Lbike/smarthalo/app/controllers/DayLightController$1;
.super Ljava/util/TimerTask;
.source "DayLightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/DayLightController;->updateLightState(ZZILandroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/DayLightController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/DayLightController;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController$1;->this$0:Lbike/smarthalo/app/controllers/DayLightController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 286
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController$1;->this$0:Lbike/smarthalo/app/controllers/DayLightController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/DayLightController;->access$000(Lbike/smarthalo/app/controllers/DayLightController;)V

    return-void
.end method
