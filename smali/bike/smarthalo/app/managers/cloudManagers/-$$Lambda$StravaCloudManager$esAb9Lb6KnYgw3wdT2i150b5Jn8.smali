.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$esAb9Lb6KnYgw3wdT2i150b5Jn8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$esAb9Lb6KnYgw3wdT2i150b5Jn8;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    iput-boolean p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$esAb9Lb6KnYgw3wdT2i150b5Jn8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$esAb9Lb6KnYgw3wdT2i150b5Jn8;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    iget-boolean v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$esAb9Lb6KnYgw3wdT2i150b5Jn8;->f$1:Z

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->lambda$observeCreateNewActivity$14(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;ZLretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
