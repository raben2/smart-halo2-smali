.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$VluzeFdfWrZ_hV4dUmmuxG843N0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$VluzeFdfWrZ_hV4dUmmuxG843N0;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$VluzeFdfWrZ_hV4dUmmuxG843N0;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->lambda$checkActivityAvailability$8(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
