.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHSettings;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/SHSettings;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;->f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;->f$1:Lbike/smarthalo/app/models/SHSettings;

    iput p3, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;->f$0:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;->f$1:Lbike/smarthalo/app/models/SHSettings;

    iget v2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$UserCloudManager$dEam3tPksfHDFgFYjSaoOSa6T5w;->f$2:I

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;->lambda$updateCloudConfigsWithLocalValues$13(Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;Lbike/smarthalo/app/models/SHSettings;ILbike/smarthalo/app/models/GenericResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
