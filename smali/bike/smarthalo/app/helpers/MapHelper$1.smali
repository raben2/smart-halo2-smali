.class synthetic Lbike/smarthalo/app/helpers/MapHelper$1;
.super Ljava/lang/Object;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/helpers/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$app$models$PathProperty:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 254
    invoke-static {}, Lbike/smarthalo/app/models/PathProperty;->values()[Lbike/smarthalo/app/models/PathProperty;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/helpers/MapHelper$1;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    :try_start_0
    sget-object v0, Lbike/smarthalo/app/helpers/MapHelper$1;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->Grades:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lbike/smarthalo/app/helpers/MapHelper$1;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->CycleLane:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lbike/smarthalo/app/helpers/MapHelper$1;->$SwitchMap$bike$smarthalo$app$models$PathProperty:[I

    sget-object v1, Lbike/smarthalo/app/models/PathProperty;->Surface:Lbike/smarthalo/app/models/PathProperty;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PathProperty;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
