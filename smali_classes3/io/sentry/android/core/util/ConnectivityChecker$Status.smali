.class public final enum Lio/sentry/android/core/util/ConnectivityChecker$Status;
.super Ljava/lang/Enum;
.source "ConnectivityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/util/ConnectivityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/android/core/util/ConnectivityChecker$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/android/core/util/ConnectivityChecker$Status;

.field public static final enum CONNECTED:Lio/sentry/android/core/util/ConnectivityChecker$Status;

.field public static final enum NOT_CONNECTED:Lio/sentry/android/core/util/ConnectivityChecker$Status;

.field public static final enum NO_PERMISSION:Lio/sentry/android/core/util/ConnectivityChecker$Status;

.field public static final enum UNKNOWN:Lio/sentry/android/core/util/ConnectivityChecker$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/android/core/util/ConnectivityChecker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;->CONNECTED:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    .line 22
    new-instance v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;

    const-string v1, "NOT_CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/sentry/android/core/util/ConnectivityChecker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;->NOT_CONNECTED:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    .line 23
    new-instance v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;

    const-string v1, "NO_PERMISSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/sentry/android/core/util/ConnectivityChecker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;->NO_PERMISSION:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    .line 24
    new-instance v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/sentry/android/core/util/ConnectivityChecker$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;->UNKNOWN:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    const/4 v0, 0x4

    .line 20
    new-array v0, v0, [Lio/sentry/android/core/util/ConnectivityChecker$Status;

    sget-object v1, Lio/sentry/android/core/util/ConnectivityChecker$Status;->CONNECTED:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    aput-object v1, v0, v2

    sget-object v1, Lio/sentry/android/core/util/ConnectivityChecker$Status;->NOT_CONNECTED:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    aput-object v1, v0, v3

    sget-object v1, Lio/sentry/android/core/util/ConnectivityChecker$Status;->NO_PERMISSION:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    aput-object v1, v0, v4

    sget-object v1, Lio/sentry/android/core/util/ConnectivityChecker$Status;->UNKNOWN:Lio/sentry/android/core/util/ConnectivityChecker$Status;

    aput-object v1, v0, v5

    sput-object v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;->$VALUES:[Lio/sentry/android/core/util/ConnectivityChecker$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/android/core/util/ConnectivityChecker$Status;
    .locals 1

    .line 20
    const-class v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/android/core/util/ConnectivityChecker$Status;

    return-object p0
.end method

.method public static values()[Lio/sentry/android/core/util/ConnectivityChecker$Status;
    .locals 1

    .line 20
    sget-object v0, Lio/sentry/android/core/util/ConnectivityChecker$Status;->$VALUES:[Lio/sentry/android/core/util/ConnectivityChecker$Status;

    invoke-virtual {v0}, [Lio/sentry/android/core/util/ConnectivityChecker$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/android/core/util/ConnectivityChecker$Status;

    return-object v0
.end method
