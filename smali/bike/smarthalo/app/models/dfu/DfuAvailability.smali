.class public final enum Lbike/smarthalo/app/models/dfu/DfuAvailability;
.super Ljava/lang/Enum;
.source "DfuAvailability.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/dfu/DfuAvailability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/dfu/DfuAvailability;

.field public static final enum Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

.field public static final enum None:Lbike/smarthalo/app/models/dfu/DfuAvailability;

.field public static final enum Preparing:Lbike/smarthalo/app/models/dfu/DfuAvailability;

.field public static final enum Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

.field public static final enum RequiredForTester:Lbike/smarthalo/app/models/dfu/DfuAvailability;

.field public static final enum RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/dfu/DfuAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->None:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const-string v1, "Preparing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/dfu/DfuAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Preparing:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const-string v1, "Available"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/dfu/DfuAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const-string v1, "RequiredForTester"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/dfu/DfuAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredForTester:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const-string v1, "Required"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/models/dfu/DfuAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const-string v1, "RequiredGolden"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lbike/smarthalo/app/models/dfu/DfuAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    const/4 v0, 0x6

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->None:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Preparing:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredForTester:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    aput-object v1, v0, v7

    sput-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->$VALUES:[Lbike/smarthalo/app/models/dfu/DfuAvailability;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/dfu/DfuAvailability;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/dfu/DfuAvailability;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/dfu/DfuAvailability;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->$VALUES:[Lbike/smarthalo/app/models/dfu/DfuAvailability;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/dfu/DfuAvailability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/dfu/DfuAvailability;

    return-object v0
.end method
