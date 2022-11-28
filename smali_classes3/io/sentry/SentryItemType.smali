.class public final enum Lio/sentry/SentryItemType;
.super Ljava/lang/Enum;
.source "SentryItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/SentryItemType;",
        ">;"
    }
.end annotation

.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/SentryItemType;

.field public static final enum Attachment:Lio/sentry/SentryItemType;

.field public static final enum Event:Lio/sentry/SentryItemType;

.field public static final enum Session:Lio/sentry/SentryItemType;

.field public static final enum Transaction:Lio/sentry/SentryItemType;

.field public static final enum Unknown:Lio/sentry/SentryItemType;

.field public static final enum UserFeedback:Lio/sentry/SentryItemType;


# instance fields
.field private final itemType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Session"

    const-string v2, "session"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    .line 8
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Event"

    const-string v2, "event"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    .line 9
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "UserFeedback"

    const-string v2, "user_report"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    .line 10
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Attachment"

    const-string v2, "attachment"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    .line 11
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Transaction"

    const-string v2, "transaction"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    .line 12
    new-instance v0, Lio/sentry/SentryItemType;

    const-string v1, "Unknown"

    const-string v2, "__unknown__"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lio/sentry/SentryItemType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [Lio/sentry/SentryItemType;

    sget-object v1, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    aput-object v1, v0, v3

    sget-object v1, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    aput-object v1, v0, v4

    sget-object v1, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    aput-object v1, v0, v5

    sget-object v1, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    aput-object v1, v0, v6

    sget-object v1, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    aput-object v1, v0, v7

    sget-object v1, Lio/sentry/SentryItemType;->Unknown:Lio/sentry/SentryItemType;

    aput-object v1, v0, v8

    sput-object v0, Lio/sentry/SentryItemType;->$VALUES:[Lio/sentry/SentryItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    return-void
.end method

.method public static resolve(Ljava/lang/Object;)Lio/sentry/SentryItemType;
    .locals 1

    .line 17
    instance-of v0, p0, Lio/sentry/SentryEvent;

    if-eqz v0, :cond_0

    .line 18
    sget-object p0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    return-object p0

    .line 19
    :cond_0
    instance-of v0, p0, Lio/sentry/SentryTransaction;

    if-eqz v0, :cond_1

    .line 20
    sget-object p0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    return-object p0

    .line 21
    :cond_1
    instance-of p0, p0, Lio/sentry/Session;

    if-eqz p0, :cond_2

    .line 22
    sget-object p0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    return-object p0

    .line 24
    :cond_2
    sget-object p0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/SentryItemType;
    .locals 1

    .line 5
    const-class v0, Lio/sentry/SentryItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryItemType;

    return-object p0
.end method

.method public static values()[Lio/sentry/SentryItemType;
    .locals 1

    .line 5
    sget-object v0, Lio/sentry/SentryItemType;->$VALUES:[Lio/sentry/SentryItemType;

    invoke-virtual {v0}, [Lio/sentry/SentryItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/SentryItemType;

    return-object v0
.end method


# virtual methods
.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/sentry/SentryItemType;->itemType:Ljava/lang/String;

    return-object v0
.end method
