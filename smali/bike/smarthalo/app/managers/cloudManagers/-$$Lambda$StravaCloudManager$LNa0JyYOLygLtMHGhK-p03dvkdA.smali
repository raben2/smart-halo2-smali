.class public final synthetic Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$LNa0JyYOLygLtMHGhK-p03dvkdA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$LNa0JyYOLygLtMHGhK-p03dvkdA;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    iput-wide p2, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$LNa0JyYOLygLtMHGhK-p03dvkdA;->f$1:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$LNa0JyYOLygLtMHGhK-p03dvkdA;->f$0:Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    iget-wide v1, p0, Lbike/smarthalo/app/managers/cloudManagers/-$$Lambda$StravaCloudManager$LNa0JyYOLygLtMHGhK-p03dvkdA;->f$1:J

    check-cast p1, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;

    invoke-static {v0, v1, v2, p1}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;->lambda$checkActivityAvailability$10(Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;JLbike/smarthalo/app/managers/cloudManagers/StravaCloudManager$StravaTokenUpdateResponseType;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
