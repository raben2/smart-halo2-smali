.class synthetic Lbike/smarthalo/app/presenters/DFUPresenter$2;
.super Ljava/lang/Object;
.source "DFUPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/DFUPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

.field static final synthetic $SwitchMap$bike$smarthalo$sdk$models$FirmwareType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 151
    invoke-static {}, Lbike/smarthalo/app/models/dfu/DfuStepType;->values()[Lbike/smarthalo/app/models/dfu/DfuStepType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v2, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v3, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloading:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloaded:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->InvalidFileError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$app$models$dfu$DfuStepType:[I

    sget-object v4, Lbike/smarthalo/app/models/dfu/DfuStepType;->LowBatteryError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 125
    :catch_a
    invoke-static {}, Lbike/smarthalo/sdk/models/FirmwareType;->values()[Lbike/smarthalo/sdk/models/FirmwareType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$sdk$models$FirmwareType:[I

    :try_start_b
    sget-object v3, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$sdk$models$FirmwareType:[I

    sget-object v4, Lbike/smarthalo/sdk/models/FirmwareType;->SH1:Lbike/smarthalo/sdk/models/FirmwareType;

    invoke-virtual {v4}, Lbike/smarthalo/sdk/models/FirmwareType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$sdk$models$FirmwareType:[I

    sget-object v3, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_NRF:Lbike/smarthalo/sdk/models/FirmwareType;

    invoke-virtual {v3}, Lbike/smarthalo/sdk/models/FirmwareType;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lbike/smarthalo/app/presenters/DFUPresenter$2;->$SwitchMap$bike$smarthalo$sdk$models$FirmwareType:[I

    sget-object v1, Lbike/smarthalo/sdk/models/FirmwareType;->SH2_STM:Lbike/smarthalo/sdk/models/FirmwareType;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/FirmwareType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
