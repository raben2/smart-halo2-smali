.class public final synthetic Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$NEWH-5jTBdKtBJ9uxiHich0iwCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/services/StravaUploadJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/services/StravaUploadJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$NEWH-5jTBdKtBJ9uxiHich0iwCA;->f$0:Lbike/smarthalo/app/services/StravaUploadJobService;

    iput-object p2, p0, Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$NEWH-5jTBdKtBJ9uxiHich0iwCA;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$NEWH-5jTBdKtBJ9uxiHich0iwCA;->f$0:Lbike/smarthalo/app/services/StravaUploadJobService;

    iget-object v1, p0, Lbike/smarthalo/app/services/-$$Lambda$StravaUploadJobService$NEWH-5jTBdKtBJ9uxiHich0iwCA;->f$1:Landroid/app/job/JobParameters;

    check-cast p1, Lbike/smarthalo/app/models/StravaUploadResult;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/services/StravaUploadJobService;->lambda$onStartJob$0(Lbike/smarthalo/app/services/StravaUploadJobService;Landroid/app/job/JobParameters;Lbike/smarthalo/app/models/StravaUploadResult;)V

    return-void
.end method
