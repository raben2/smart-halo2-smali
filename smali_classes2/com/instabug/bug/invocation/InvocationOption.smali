.class public interface abstract annotation Lcom/instabug/bug/invocation/InvocationOption;
.super Ljava/lang/Object;
.source "InvocationOption.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COMMENT_FIELD_REQUIRED:I = 0x8

.field public static final DISABLE_POST_SENDING_DIALOG:I = 0x10

.field public static final EMAIL_FIELD_HIDDEN:I = 0x2

.field public static final EMAIL_FIELD_OPTIONAL:I = 0x4
