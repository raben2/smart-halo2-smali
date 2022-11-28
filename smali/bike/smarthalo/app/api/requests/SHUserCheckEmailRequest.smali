.class public Lbike/smarthalo/app/api/requests/SHUserCheckEmailRequest;
.super Ljava/lang/Object;
.source "SHUserCheckEmailRequest.java"


# instance fields
.field private email:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHUserCheckEmailRequest;->email:Ljava/lang/String;

    return-void
.end method
