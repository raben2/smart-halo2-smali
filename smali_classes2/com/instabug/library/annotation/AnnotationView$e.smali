.class final enum Lcom/instabug/library/annotation/AnnotationView$e;
.super Ljava/lang/Enum;
.source "AnnotationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/annotation/AnnotationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/annotation/AnnotationView$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/annotation/AnnotationView$e;

.field public static final enum HIGH:Lcom/instabug/library/annotation/AnnotationView$e;

.field public static final enum LOW:Lcom/instabug/library/annotation/AnnotationView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$e;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/annotation/AnnotationView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$e;->HIGH:Lcom/instabug/library/annotation/AnnotationView$e;

    .line 2
    new-instance v0, Lcom/instabug/library/annotation/AnnotationView$e;

    const-string v1, "LOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/annotation/AnnotationView$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/annotation/AnnotationView$e;->LOW:Lcom/instabug/library/annotation/AnnotationView$e;

    const/4 v1, 0x2

    .line 3
    new-array v1, v1, [Lcom/instabug/library/annotation/AnnotationView$e;

    sget-object v4, Lcom/instabug/library/annotation/AnnotationView$e;->HIGH:Lcom/instabug/library/annotation/AnnotationView$e;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/instabug/library/annotation/AnnotationView$e;->$VALUES:[Lcom/instabug/library/annotation/AnnotationView$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/annotation/AnnotationView$e;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/annotation/AnnotationView$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/annotation/AnnotationView$e;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/annotation/AnnotationView$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/annotation/AnnotationView$e;->$VALUES:[Lcom/instabug/library/annotation/AnnotationView$e;

    invoke-virtual {v0}, [Lcom/instabug/library/annotation/AnnotationView$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/annotation/AnnotationView$e;

    return-object v0
.end method
