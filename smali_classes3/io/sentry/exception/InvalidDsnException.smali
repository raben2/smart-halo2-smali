.class public final Lio/sentry/exception/InvalidDsnException;
.super Ljava/lang/RuntimeException;
.source "InvalidDsnException.java"


# static fields
.field private static final serialVersionUID:J = 0x5bb136e0f618935L


# instance fields
.field private final dsn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 8
    iput-object p1, p0, Lio/sentry/exception/InvalidDsnException;->dsn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lio/sentry/exception/InvalidDsnException;->dsn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iput-object p1, p0, Lio/sentry/exception/InvalidDsnException;->dsn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    iput-object p1, p0, Lio/sentry/exception/InvalidDsnException;->dsn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDsn()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/sentry/exception/InvalidDsnException;->dsn:Ljava/lang/String;

    return-object v0
.end method
