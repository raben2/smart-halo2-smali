.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$PgF_cHpjGrRr5cplefI1I4dGqx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

.field private final synthetic f$1:Lbike/smarthalo/app/models/SHRide;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/SHRide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$PgF_cHpjGrRr5cplefI1I4dGqx8;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$PgF_cHpjGrRr5cplefI1I4dGqx8;->f$1:Lbike/smarthalo/app/models/SHRide;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$PgF_cHpjGrRr5cplefI1I4dGqx8;->f$0:Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    iget-object v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$FitnessCloudManager$PgF_cHpjGrRr5cplefI1I4dGqx8;->f$1:Lbike/smarthalo/app/models/SHRide;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;->lambda$getRideUploadObservableSequence$7(Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;Lbike/smarthalo/app/models/SHRide;Lretrofit2/Response;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
