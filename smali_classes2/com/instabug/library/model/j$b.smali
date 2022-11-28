.class public final enum Lcom/instabug/library/model/j$b;
.super Ljava/lang/Enum;
.source "UserStep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/model/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/model/j$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/model/j$b;

.field public static final enum APPLICATION:Lcom/instabug/library/model/j$b;

.field public static final enum DOUBLE_TAP:Lcom/instabug/library/model/j$b;

.field public static final enum LONG_PRESS:Lcom/instabug/library/model/j$b;

.field public static final enum MOTION:Lcom/instabug/library/model/j$b;

.field public static final enum NOT_AVAILABLE:Lcom/instabug/library/model/j$b;

.field public static final enum PINCH:Lcom/instabug/library/model/j$b;

.field public static final enum SCROLL:Lcom/instabug/library/model/j$b;

.field public static final enum SWIPE:Lcom/instabug/library/model/j$b;

.field public static final enum TAP:Lcom/instabug/library/model/j$b;

.field public static final enum VIEW:Lcom/instabug/library/model/j$b;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "APPLICATION"

    const-string v2, "application"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->APPLICATION:Lcom/instabug/library/model/j$b;

    .line 5
    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "VIEW"

    const-string v2, "view"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->VIEW:Lcom/instabug/library/model/j$b;

    .line 9
    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "MOTION"

    const-string v2, "motion"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->MOTION:Lcom/instabug/library/model/j$b;

    .line 11
    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "TAP"

    const-string v2, "tap"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->TAP:Lcom/instabug/library/model/j$b;

    .line 12
    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "PINCH"

    const-string v2, "pinch"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->PINCH:Lcom/instabug/library/model/j$b;

    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "LONG_PRESS"

    const-string v2, "long_press"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->LONG_PRESS:Lcom/instabug/library/model/j$b;

    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "SCROLL"

    const-string v2, "scroll"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->SCROLL:Lcom/instabug/library/model/j$b;

    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "SWIPE"

    const-string v2, "swipe"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->SWIPE:Lcom/instabug/library/model/j$b;

    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "DOUBLE_TAP"

    const-string v2, "double_tap"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->DOUBLE_TAP:Lcom/instabug/library/model/j$b;

    .line 16
    new-instance v0, Lcom/instabug/library/model/j$b;

    const-string v1, "NOT_AVAILABLE"

    const-string v2, "not_available"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/instabug/library/model/j$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/model/j$b;->NOT_AVAILABLE:Lcom/instabug/library/model/j$b;

    const/16 v1, 0xa

    .line 17
    new-array v1, v1, [Lcom/instabug/library/model/j$b;

    sget-object v2, Lcom/instabug/library/model/j$b;->APPLICATION:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/model/j$b;->VIEW:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/model/j$b;->MOTION:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/library/model/j$b;->TAP:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v6

    sget-object v2, Lcom/instabug/library/model/j$b;->PINCH:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v7

    sget-object v2, Lcom/instabug/library/model/j$b;->LONG_PRESS:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v8

    sget-object v2, Lcom/instabug/library/model/j$b;->SCROLL:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v9

    sget-object v2, Lcom/instabug/library/model/j$b;->SWIPE:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v10

    sget-object v2, Lcom/instabug/library/model/j$b;->DOUBLE_TAP:Lcom/instabug/library/model/j$b;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/instabug/library/model/j$b;->$VALUES:[Lcom/instabug/library/model/j$b;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/instabug/library/model/j$b;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/model/j$b;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/model/j$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/model/j$b;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/model/j$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/model/j$b;->$VALUES:[Lcom/instabug/library/model/j$b;

    invoke-virtual {v0}, [Lcom/instabug/library/model/j$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/model/j$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/j$b;->name:Ljava/lang/String;

    return-object v0
.end method
