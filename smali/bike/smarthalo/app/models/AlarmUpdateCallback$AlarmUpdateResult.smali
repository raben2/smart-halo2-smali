.class public final enum Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;
.super Ljava/lang/Enum;
.source "AlarmUpdateCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/AlarmUpdateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlarmUpdateResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

.field public static final enum Failure:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

.field public static final enum Success:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

.field public static final enum Unsupported:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Success:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    const-string v1, "Failure"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Failure:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    const-string v1, "Unsupported"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Unsupported:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    sget-object v1, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Success:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Failure:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Unsupported:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->$VALUES:[Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;
    .locals 1

    .line 10
    const-class v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;
    .locals 1

    .line 10
    sget-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->$VALUES:[Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    return-object v0
.end method
