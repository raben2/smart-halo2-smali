.class synthetic Lbike/smarthalo/app/services/StravaUploadJobService$1;
.super Ljava/lang/Object;
.source "StravaUploadJobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/services/StravaUploadJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$app$models$StravaUploadResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    invoke-static {}, Lbike/smarthalo/app/models/StravaUploadResult;->values()[Lbike/smarthalo/app/models/StravaUploadResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/services/StravaUploadJobService$1;->$SwitchMap$bike$smarthalo$app$models$StravaUploadResult:[I

    :try_start_0
    sget-object v0, Lbike/smarthalo/app/services/StravaUploadJobService$1;->$SwitchMap$bike$smarthalo$app$models$StravaUploadResult:[I

    sget-object v1, Lbike/smarthalo/app/models/StravaUploadResult;->Success:Lbike/smarthalo/app/models/StravaUploadResult;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/StravaUploadResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lbike/smarthalo/app/services/StravaUploadJobService$1;->$SwitchMap$bike$smarthalo$app$models$StravaUploadResult:[I

    sget-object v1, Lbike/smarthalo/app/models/StravaUploadResult;->FailureDontReschedule:Lbike/smarthalo/app/models/StravaUploadResult;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/StravaUploadResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lbike/smarthalo/app/services/StravaUploadJobService$1;->$SwitchMap$bike$smarthalo$app$models$StravaUploadResult:[I

    sget-object v1, Lbike/smarthalo/app/models/StravaUploadResult;->FailureReschedule:Lbike/smarthalo/app/models/StravaUploadResult;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/StravaUploadResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lbike/smarthalo/app/services/StravaUploadJobService$1;->$SwitchMap$bike$smarthalo$app$models$StravaUploadResult:[I

    sget-object v1, Lbike/smarthalo/app/models/StravaUploadResult;->PatchFail:Lbike/smarthalo/app/models/StravaUploadResult;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/StravaUploadResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
