.class public final enum Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;
.super Ljava/lang/Enum;
.source "NordicProtocolVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

.field public static final enum None:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

.field public static final enum V1_1:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

.field public static final enum V1_2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

.field public static final enum V1_2_1:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

.field public static final enum V1_3:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

.field public static final enum V1_6:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

.field public static final enum V1_7:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

.field public static final enum V2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const-string v1, "V1_1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_1:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const-string v1, "V1_2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const-string v1, "V1_2_1"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2_1:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const-string v1, "V1_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_3:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    .line 12
    new-instance v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const-string v1, "V1_6"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_6:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    .line 13
    new-instance v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const-string v1, "V1_7"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_7:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    .line 14
    new-instance v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const-string v1, "V2"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    .line 15
    new-instance v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const-string v1, "None"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->None:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    const/16 v0, 0x8

    .line 7
    new-array v0, v0, [Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_1:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2_1:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_3:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_6:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_7:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->None:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    aput-object v1, v0, v9

    sput-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->$VALUES:[Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->$VALUES:[Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    return-object v0
.end method
