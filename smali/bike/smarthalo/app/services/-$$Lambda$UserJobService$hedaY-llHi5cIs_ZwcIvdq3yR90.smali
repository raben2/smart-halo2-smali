.class public final synthetic Lbike/smarthalo/app/services/-$$Lambda$UserJobService$hedaY-llHi5cIs_ZwcIvdq3yR90;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/services/UserJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/services/UserJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/services/-$$Lambda$UserJobService$hedaY-llHi5cIs_ZwcIvdq3yR90;->f$0:Lbike/smarthalo/app/services/UserJobService;

    iput-object p2, p0, Lbike/smarthalo/app/services/-$$Lambda$UserJobService$hedaY-llHi5cIs_ZwcIvdq3yR90;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/services/-$$Lambda$UserJobService$hedaY-llHi5cIs_ZwcIvdq3yR90;->f$0:Lbike/smarthalo/app/services/UserJobService;

    iget-object v1, p0, Lbike/smarthalo/app/services/-$$Lambda$UserJobService$hedaY-llHi5cIs_ZwcIvdq3yR90;->f$1:Landroid/app/job/JobParameters;

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/services/UserJobService;->lambda$onStartJob$0(Lbike/smarthalo/app/services/UserJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/models/GenericResponse;)V

    return-void
.end method
