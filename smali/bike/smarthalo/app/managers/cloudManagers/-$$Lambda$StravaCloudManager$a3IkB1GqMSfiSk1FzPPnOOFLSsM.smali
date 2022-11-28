.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$a3IkB1GqMSfiSk1FzPPnOOFLSsM;
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

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$a3IkB1GqMSfiSk1FzPPnOOFLSsM;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$a3IkB1GqMSfiSk1FzPPnOOFLSsM;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    check-cast p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->lambda$a3IkB1GqMSfiSk1FzPPnOOFLSsM(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/Single;

    move-result-object p1

    check-cast p1, Lio/reactivex/SingleSource;

    return-object p1
.end method
