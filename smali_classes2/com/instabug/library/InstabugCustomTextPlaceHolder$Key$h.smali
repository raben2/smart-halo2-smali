.class final enum Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key$h;
.super Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;
.source "InstabugCustomTextPlaceHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;-><init>(Ljava/lang/String;ILcom/instabug/library/InstabugCustomTextPlaceHolder$a;)V

    return-void
.end method


# virtual methods
.method charLimit()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method
