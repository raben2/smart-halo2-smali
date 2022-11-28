.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$oTVGxRP4_exIzXrm54nAJ3ayslw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DayLightController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DayLightController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$oTVGxRP4_exIzXrm54nAJ3ayslw;->f$0:Lbike/smarthalo/app/controllers/DayLightController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$oTVGxRP4_exIzXrm54nAJ3ayslw;->f$0:Lbike/smarthalo/app/controllers/DayLightController;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/DayLightController;->lambda$setUpDelayedBrightnessUpdate$5(Lbike/smarthalo/app/controllers/DayLightController;Ljava/lang/Long;)V

    return-void
.end method
