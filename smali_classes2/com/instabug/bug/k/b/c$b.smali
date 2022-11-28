.class public final enum Lcom/instabug/bug/k/b/c$b;
.super Ljava/lang/Enum;
.source "ViewHierarchyInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/bug/k/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/bug/k/b/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/bug/k/b/c$b;

.field public static final enum COMPLETED:Lcom/instabug/bug/k/b/c$b;

.field public static final enum FAILED:Lcom/instabug/bug/k/b/c$b;

.field public static final enum STARTED:Lcom/instabug/bug/k/b/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/bug/k/b/c$b;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/bug/k/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/k/b/c$b;->STARTED:Lcom/instabug/bug/k/b/c$b;

    new-instance v0, Lcom/instabug/bug/k/b/c$b;

    const-string v1, "FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/bug/k/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/k/b/c$b;->FAILED:Lcom/instabug/bug/k/b/c$b;

    new-instance v0, Lcom/instabug/bug/k/b/c$b;

    const-string v1, "COMPLETED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/bug/k/b/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/k/b/c$b;->COMPLETED:Lcom/instabug/bug/k/b/c$b;

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [Lcom/instabug/bug/k/b/c$b;

    sget-object v5, Lcom/instabug/bug/k/b/c$b;->STARTED:Lcom/instabug/bug/k/b/c$b;

    aput-object v5, v1, v2

    sget-object v2, Lcom/instabug/bug/k/b/c$b;->FAILED:Lcom/instabug/bug/k/b/c$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/bug/k/b/c$b;->$VALUES:[Lcom/instabug/bug/k/b/c$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/bug/k/b/c$b;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/bug/k/b/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/bug/k/b/c$b;

    return-object p0
.end method

.method public static values()[Lcom/instabug/bug/k/b/c$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/k/b/c$b;->$VALUES:[Lcom/instabug/bug/k/b/c$b;

    invoke-virtual {v0}, [Lcom/instabug/bug/k/b/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/bug/k/b/c$b;

    return-object v0
.end method
