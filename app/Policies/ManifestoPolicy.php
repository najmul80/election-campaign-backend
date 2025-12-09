<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\Manifesto;
use Illuminate\Auth\Access\HandlesAuthorization;

class ManifestoPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:Manifesto');
    }

    public function view(AuthUser $authUser, Manifesto $manifesto): bool
    {
        return $authUser->can('View:Manifesto');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:Manifesto');
    }

    public function update(AuthUser $authUser, Manifesto $manifesto): bool
    {
        return $authUser->can('Update:Manifesto');
    }

    public function delete(AuthUser $authUser, Manifesto $manifesto): bool
    {
        return $authUser->can('Delete:Manifesto');
    }

    public function restore(AuthUser $authUser, Manifesto $manifesto): bool
    {
        return $authUser->can('Restore:Manifesto');
    }

    public function forceDelete(AuthUser $authUser, Manifesto $manifesto): bool
    {
        return $authUser->can('ForceDelete:Manifesto');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:Manifesto');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:Manifesto');
    }

    public function replicate(AuthUser $authUser, Manifesto $manifesto): bool
    {
        return $authUser->can('Replicate:Manifesto');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:Manifesto');
    }

}