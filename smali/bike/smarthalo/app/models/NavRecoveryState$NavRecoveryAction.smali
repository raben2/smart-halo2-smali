.class public final enum Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;
.super Ljava/lang/Enum;
.source "NavRecoveryState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/NavRecoveryState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavRecoveryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

.field public static final enum None:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

.field public static final enum RecoverDestroyed:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

.field public static final enum RecoverPaused:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->None:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    .line 13
    new-instance v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    const-string v1, "RecoverPaused"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->RecoverPaused:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    const-string v1, "RecoverDestroyed"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->RecoverDestroyed:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    sget-object v1, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->None:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->RecoverPaused:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->RecoverDestroyed:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->$VALUES:[Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;
    .locals 1

    .line 11
    const-class v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;
    .locals 1

    .line 11
    sget-object v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->$VALUES:[Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    return-object v0
.end method
