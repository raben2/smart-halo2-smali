.class public final enum Lcom/instabug/featuresrequest/d/b$a;
.super Ljava/lang/Enum;
.source "FeatureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/featuresrequest/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/featuresrequest/d/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/featuresrequest/d/b$a;

.field public static final enum Completed:Lcom/instabug/featuresrequest/d/b$a;

.field public static final enum InProgress:Lcom/instabug/featuresrequest/d/b$a;

.field public static final enum MaybeLater:Lcom/instabug/featuresrequest/d/b$a;

.field public static final enum Open:Lcom/instabug/featuresrequest/d/b$a;

.field public static final enum Planned:Lcom/instabug/featuresrequest/d/b$a;


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/d/b$a;

    const-string v1, "Open"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/instabug/featuresrequest/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$a;->Open:Lcom/instabug/featuresrequest/d/b$a;

    new-instance v0, Lcom/instabug/featuresrequest/d/b$a;

    const-string v1, "Planned"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/instabug/featuresrequest/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$a;->Planned:Lcom/instabug/featuresrequest/d/b$a;

    new-instance v0, Lcom/instabug/featuresrequest/d/b$a;

    const-string v1, "InProgress"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/instabug/featuresrequest/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$a;->InProgress:Lcom/instabug/featuresrequest/d/b$a;

    new-instance v0, Lcom/instabug/featuresrequest/d/b$a;

    const-string v1, "Completed"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/instabug/featuresrequest/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$a;->Completed:Lcom/instabug/featuresrequest/d/b$a;

    new-instance v0, Lcom/instabug/featuresrequest/d/b$a;

    const-string v1, "MaybeLater"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/instabug/featuresrequest/d/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/instabug/featuresrequest/d/b$a;->MaybeLater:Lcom/instabug/featuresrequest/d/b$a;

    const/4 v1, 0x5

    .line 2
    new-array v1, v1, [Lcom/instabug/featuresrequest/d/b$a;

    sget-object v7, Lcom/instabug/featuresrequest/d/b$a;->Open:Lcom/instabug/featuresrequest/d/b$a;

    aput-object v7, v1, v2

    sget-object v2, Lcom/instabug/featuresrequest/d/b$a;->Planned:Lcom/instabug/featuresrequest/d/b$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/featuresrequest/d/b$a;->InProgress:Lcom/instabug/featuresrequest/d/b$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/featuresrequest/d/b$a;->Completed:Lcom/instabug/featuresrequest/d/b$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/instabug/featuresrequest/d/b$a;->$VALUES:[Lcom/instabug/featuresrequest/d/b$a;

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
    iput p3, p0, Lcom/instabug/featuresrequest/d/b$a;->status:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/featuresrequest/d/b$a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/featuresrequest/d/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/featuresrequest/d/b$a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/featuresrequest/d/b$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/d/b$a;->$VALUES:[Lcom/instabug/featuresrequest/d/b$a;

    invoke-virtual {v0}, [Lcom/instabug/featuresrequest/d/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/featuresrequest/d/b$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/featuresrequest/d/b$a;->status:I

    return v0
.end method
