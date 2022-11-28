.class public final enum Lbike/smarthalo/app/models/TokenRefreshState;
.super Ljava/lang/Enum;
.source "TokenRefreshState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/TokenRefreshState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/TokenRefreshState;

.field public static final enum ForbiddenTokenError:Lbike/smarthalo/app/models/TokenRefreshState;

.field public static final enum NetworkError:Lbike/smarthalo/app/models/TokenRefreshState;

.field public static final enum NoNeedToRefresh:Lbike/smarthalo/app/models/TokenRefreshState;

.field public static final enum NullTokensError:Lbike/smarthalo/app/models/TokenRefreshState;

.field public static final enum Success:Lbike/smarthalo/app/models/TokenRefreshState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lbike/smarthalo/app/models/TokenRefreshState;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/TokenRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->Success:Lbike/smarthalo/app/models/TokenRefreshState;

    .line 9
    new-instance v0, Lbike/smarthalo/app/models/TokenRefreshState;

    const-string v1, "NetworkError"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lbike/smarthalo/app/models/TokenRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->NetworkError:Lbike/smarthalo/app/models/TokenRefreshState;

    .line 10
    new-instance v0, Lbike/smarthalo/app/models/TokenRefreshState;

    const-string v1, "ForbiddenTokenError"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lbike/smarthalo/app/models/TokenRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->ForbiddenTokenError:Lbike/smarthalo/app/models/TokenRefreshState;

    .line 11
    new-instance v0, Lbike/smarthalo/app/models/TokenRefreshState;

    const-string v1, "NullTokensError"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lbike/smarthalo/app/models/TokenRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->NullTokensError:Lbike/smarthalo/app/models/TokenRefreshState;

    .line 12
    new-instance v0, Lbike/smarthalo/app/models/TokenRefreshState;

    const-string v1, "NoNeedToRefresh"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lbike/smarthalo/app/models/TokenRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->NoNeedToRefresh:Lbike/smarthalo/app/models/TokenRefreshState;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lbike/smarthalo/app/models/TokenRefreshState;

    sget-object v1, Lbike/smarthalo/app/models/TokenRefreshState;->Success:Lbike/smarthalo/app/models/TokenRefreshState;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/app/models/TokenRefreshState;->NetworkError:Lbike/smarthalo/app/models/TokenRefreshState;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/app/models/TokenRefreshState;->ForbiddenTokenError:Lbike/smarthalo/app/models/TokenRefreshState;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/app/models/TokenRefreshState;->NullTokensError:Lbike/smarthalo/app/models/TokenRefreshState;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/app/models/TokenRefreshState;->NoNeedToRefresh:Lbike/smarthalo/app/models/TokenRefreshState;

    aput-object v1, v0, v6

    sput-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->$VALUES:[Lbike/smarthalo/app/models/TokenRefreshState;

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

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/TokenRefreshState;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/app/models/TokenRefreshState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/TokenRefreshState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/TokenRefreshState;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/app/models/TokenRefreshState;->$VALUES:[Lbike/smarthalo/app/models/TokenRefreshState;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/TokenRefreshState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/TokenRefreshState;

    return-object v0
.end method
