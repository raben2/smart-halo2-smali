.class public final enum Lcom/instabug/featuresrequest/d/b$b;
.super Ljava/lang/Enum;
.source "FeatureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/featuresrequest/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/featuresrequest/d/b$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/featuresrequest/d/b$b;

.field public static final enum NOTHING:Lcom/instabug/featuresrequest/d/b$b;

.field public static final enum UPLOADED:Lcom/instabug/featuresrequest/d/b$b;

.field public static final enum USER_UN_VOTED:Lcom/instabug/featuresrequest/d/b$b;

.field public static final enum USER_VOTED_UP:Lcom/instabug/featuresrequest/d/b$b;


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/d/b$b;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/instabug/featuresrequest/d/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$b;->NOTHING:Lcom/instabug/featuresrequest/d/b$b;

    new-instance v0, Lcom/instabug/featuresrequest/d/b$b;

    const-string v1, "UPLOADED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/instabug/featuresrequest/d/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$b;->UPLOADED:Lcom/instabug/featuresrequest/d/b$b;

    new-instance v0, Lcom/instabug/featuresrequest/d/b$b;

    const-string v1, "USER_VOTED_UP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/instabug/featuresrequest/d/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$b;->USER_VOTED_UP:Lcom/instabug/featuresrequest/d/b$b;

    new-instance v0, Lcom/instabug/featuresrequest/d/b$b;

    const-string v1, "USER_UN_VOTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/instabug/featuresrequest/d/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$b;->USER_UN_VOTED:Lcom/instabug/featuresrequest/d/b$b;

    const/4 v1, 0x4

    .line 2
    new-array v1, v1, [Lcom/instabug/featuresrequest/d/b$b;

    sget-object v6, Lcom/instabug/featuresrequest/d/b$b;->NOTHING:Lcom/instabug/featuresrequest/d/b$b;

    aput-object v6, v1, v2

    sget-object v2, Lcom/instabug/featuresrequest/d/b$b;->UPLOADED:Lcom/instabug/featuresrequest/d/b$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/featuresrequest/d/b$b;->USER_VOTED_UP:Lcom/instabug/featuresrequest/d/b$b;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/instabug/featuresrequest/d/b$b;->$VALUES:[Lcom/instabug/featuresrequest/d/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/instabug/featuresrequest/d/b$b;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/featuresrequest/d/b$b;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/featuresrequest/d/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/featuresrequest/d/b$b;

    return-object p0
.end method

.method public static values()[Lcom/instabug/featuresrequest/d/b$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/d/b$b;->$VALUES:[Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {v0}, [Lcom/instabug/featuresrequest/d/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/featuresrequest/d/b$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/d/b$b;->status:I

    return v0
.end method
