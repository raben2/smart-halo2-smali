.class public final synthetic Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$tvQI2slvVJ5ckSQH3n-Uka0gOJo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/services/PastRidesJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/services/PastRidesJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$tvQI2slvVJ5ckSQH3n-Uka0gOJo;->f$0:Lbike/smarthalo/app/services/PastRidesJobService;

    iput-object p2, p0, Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$tvQI2slvVJ5ckSQH3n-Uka0gOJo;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$tvQI2slvVJ5ckSQH3n-Uka0gOJo;->f$0:Lbike/smarthalo/app/services/PastRidesJobService;

    iget-object v1, p0, Lbike/smarthalo/app/services/-$$Lambda$PastRidesJobService$tvQI2slvVJ5ckSQH3n-Uka0gOJo;->f$1:Landroid/app/job/JobParameters;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/services/PastRidesJobService;->lambda$onStartJob$1(Lbike/smarthalo/app/services/PastRidesJobService;Landroid/app/job/JobParameters;Ljava/lang/Throwable;)V

    return-void
.end method