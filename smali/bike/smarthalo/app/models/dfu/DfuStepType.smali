.class public final enum Lbike/smarthalo/app/models/dfu/DfuStepType;
.super Ljava/lang/Enum;
.source "DfuStepType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/dfu/DfuStepType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Cancelled:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Downloaded:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Downloading:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum InvalidFileError:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum LowBatteryError:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum None:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

.field public static final enum Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Error"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "InvalidFileError"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->InvalidFileError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "LowBatteryError"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->LowBatteryError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Ready"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Downloading"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloading:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Downloaded"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloaded:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 15
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Transferring"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 16
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Transferred"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 17
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Installing"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 18
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Completed"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    .line 19
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    const-string v1, "Cancelled"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lbike/smarthalo/app/models/dfu/DfuStepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->Cancelled:Lbike/smarthalo/app/models/dfu/DfuStepType;

    const/16 v0, 0xc

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/dfu/DfuStepType;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->None:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Error:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->InvalidFileError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->LowBatteryError:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Ready:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloading:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Downloaded:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferring:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v9

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Transferred:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v10

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Installing:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v11

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Completed:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v12

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuStepType;->Cancelled:Lbike/smarthalo/app/models/dfu/DfuStepType;

    aput-object v1, v0, v13

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->$VALUES:[Lbike/smarthalo/app/models/dfu/DfuStepType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/dfu/DfuStepType;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/dfu/DfuStepType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/dfu/DfuStepType;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuStepType;->$VALUES:[Lbike/smarthalo/app/models/dfu/DfuStepType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/dfu/DfuStepType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/dfu/DfuStepType;

    return-object v0
.end method
