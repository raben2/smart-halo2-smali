.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$C3As0-OOvx_fUjnKZBK-UGqwc0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHUser;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/SHUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$C3As0-OOvx_fUjnKZBK-UGqwc0M;->f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$C3As0-OOvx_fUjnKZBK-UGqwc0M;->f$1:Lbike/smarthalo/app/models/SHUser;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$C3As0-OOvx_fUjnKZBK-UGqwc0M;->f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$C3As0-OOvx_fUjnKZBK-UGqwc0M;->f$1:Lbike/smarthalo/app/models/SHUser;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->lambda$updateUser$0(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/SHUser;Lretrofit2/Response;)Lbike/smarthalo/app/models/GenericResponse;

    move-result-object p1

    return-object p1
.end method
