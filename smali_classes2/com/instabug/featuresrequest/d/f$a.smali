.class public final enum Lcom/instabug/featuresrequest/d/f$a;
.super Ljava/lang/Enum;
.source "TimelineObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/featuresrequest/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/featuresrequest/d/f$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/featuresrequest/d/f$a;

.field public static final enum COMMENT:Lcom/instabug/featuresrequest/d/f$a;

.field public static final enum STATUS_CHANE:Lcom/instabug/featuresrequest/d/f$a;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/d/f$a;

    const-string v1, "COMMENT"

    const-string v2, "comment"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/featuresrequest/d/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/featuresrequest/d/f$a;->COMMENT:Lcom/instabug/featuresrequest/d/f$a;

    new-instance v0, Lcom/instabug/featuresrequest/d/f$a;

    const-string v1, "STATUS_CHANE"

    const-string v2, "state_change"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/featuresrequest/d/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/featuresrequest/d/f$a;->STATUS_CHANE:Lcom/instabug/featuresrequest/d/f$a;

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Lcom/instabug/featuresrequest/d/f$a;

    sget-object v2, Lcom/instabug/featuresrequest/d/f$a;->COMMENT:Lcom/instabug/featuresrequest/d/f$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/featuresrequest/d/f$a;->$VALUES:[Lcom/instabug/featuresrequest/d/f$a;

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
    iput-object p3, p0, Lcom/instabug/featuresrequest/d/f$a;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/featuresrequest/d/f$a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/featuresrequest/d/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/featuresrequest/d/f$a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/featuresrequest/d/f$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/d/f$a;->$VALUES:[Lcom/instabug/featuresrequest/d/f$a;

    invoke-virtual {v0}, [Lcom/instabug/featuresrequest/d/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/featuresrequest/d/f$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/d/f$a;->type:Ljava/lang/String;

    return-object v0
.end method
