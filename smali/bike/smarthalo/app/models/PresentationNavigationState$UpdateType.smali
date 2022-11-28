.class public final enum Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;
.super Ljava/lang/Enum;
.source "PresentationNavigationState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/models/PresentationNavigationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum DirectNavigation:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum Error:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum GPXError:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum Initial:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum NewLocation:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum NewStep:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum None:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum OfflineNotAtOrigin:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

.field public static final enum Recalculating:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 57
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "Recalculating"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Recalculating:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 58
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "NewStep"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->NewStep:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 59
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "ArrivedAtDestination"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 60
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "NewLocation"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->NewLocation:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 61
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "Initial"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Initial:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 62
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "DirectNavigation"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->DirectNavigation:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 63
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "Error"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Error:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 64
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "GPXError"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->GPXError:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 65
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "OfflineNotAtOrigin"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->OfflineNotAtOrigin:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 66
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const-string v1, "None"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->None:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    const/16 v0, 0xa

    .line 56
    new-array v0, v0, [Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Recalculating:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->NewStep:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->NewLocation:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Initial:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v6

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->DirectNavigation:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v7

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Error:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v8

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->GPXError:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v9

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->OfflineNotAtOrigin:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v10

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->None:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    aput-object v1, v0, v11

    sput-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->$VALUES:[Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;
    .locals 1

    .line 56
    const-class v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;
    .locals 1

    .line 56
    sget-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->$VALUES:[Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    return-object v0
.end method
