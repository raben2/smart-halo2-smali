.class public final enum Lcom/instabug/library/annotation/e/g$a;
.super Ljava/lang/Enum;
.source "Weight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/annotation/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/annotation/e/g$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/annotation/e/g$a;

.field public static final enum BOTTOM:Lcom/instabug/library/annotation/e/g$a;

.field public static final enum LEFT:Lcom/instabug/library/annotation/e/g$a;

.field public static final enum RIGHT:Lcom/instabug/library/annotation/e/g$a;

.field public static final enum TOP:Lcom/instabug/library/annotation/e/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/instabug/library/annotation/e/g$a;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/annotation/e/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/e/g$a;->LEFT:Lcom/instabug/library/annotation/e/g$a;

    new-instance v0, Lcom/instabug/library/annotation/e/g$a;

    const-string v1, "TOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/annotation/e/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/e/g$a;->TOP:Lcom/instabug/library/annotation/e/g$a;

    new-instance v0, Lcom/instabug/library/annotation/e/g$a;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/library/annotation/e/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/e/g$a;->RIGHT:Lcom/instabug/library/annotation/e/g$a;

    new-instance v0, Lcom/instabug/library/annotation/e/g$a;

    const-string v1, "BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/library/annotation/e/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/e/g$a;->BOTTOM:Lcom/instabug/library/annotation/e/g$a;

    const/4 v1, 0x4

    .line 2
    new-array v1, v1, [Lcom/instabug/library/annotation/e/g$a;

    sget-object v6, Lcom/instabug/library/annotation/e/g$a;->LEFT:Lcom/instabug/library/annotation/e/g$a;

    aput-object v6, v1, v2

    sget-object v2, Lcom/instabug/library/annotation/e/g$a;->TOP:Lcom/instabug/library/annotation/e/g$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/annotation/e/g$a;->RIGHT:Lcom/instabug/library/annotation/e/g$a;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/instabug/library/annotation/e/g$a;->$VALUES:[Lcom/instabug/library/annotation/e/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/annotation/e/g$a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/annotation/e/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/annotation/e/g$a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/annotation/e/g$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/annotation/e/g$a;->$VALUES:[Lcom/instabug/library/annotation/e/g$a;

    invoke-virtual {v0}, [Lcom/instabug/library/annotation/e/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/annotation/e/g$a;

    return-object v0
.end method
