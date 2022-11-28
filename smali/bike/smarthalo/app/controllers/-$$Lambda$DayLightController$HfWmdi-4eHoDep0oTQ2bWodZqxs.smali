.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$HfWmdi-4eHoDep0oTQ2bWodZqxs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DayLightController;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DayLightController;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$HfWmdi-4eHoDep0oTQ2bWodZqxs;->f$0:Lbike/smarthalo/app/controllers/DayLightController;

    iput-wide p2, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$HfWmdi-4eHoDep0oTQ2bWodZqxs;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$HfWmdi-4eHoDep0oTQ2bWodZqxs;->f$0:Lbike/smarthalo/app/controllers/DayLightController;

    iget-wide v1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$HfWmdi-4eHoDep0oTQ2bWodZqxs;->f$1:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/app/controllers/DayLightController;->lambda$processFirstQuarterOfDayLight$1(Lbike/smarthalo/app/controllers/DayLightController;JLjava/lang/Long;)V

    return-void
.end method
